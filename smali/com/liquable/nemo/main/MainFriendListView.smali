.class public Lcom/liquable/nemo/main/MainFriendListView;
.super Lcom/liquable/nemo/main/MainFragment;
.source "MainFriendListView.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# static fields
.field public static final VIEW_RECOMMEND_FRIEND:I = 0x15


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

.field private friendListView:Lcom/liquable/nemo/friend/FriendListView;

.field isSearchFriendsViewExpanded:Z

.field private mainSearchFriendsItem:Lcom/actionbarsherlock/view/MenuItem;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private recommendFriendsReloaded:Z

.field private searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

.field private searchFriendKeyword:Ljava/lang/String;

.field private searchFriendsView:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->isSearchFriendsViewExpanded:Z

    .line 80
    new-instance v0, Lcom/liquable/nemo/main/MainFriendListView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainFriendListView$1;-><init>(Lcom/liquable/nemo/main/MainFriendListView;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/friend/FriendListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/main/MainFriendListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFriendListView;->onUserItemClicked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendsView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/main/MainFriendListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/main/MainFriendListView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView;->reloadRecommendList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/main/MainFriendListView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView;->reloadGroupList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/widget/SearchBarWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object v0
.end method

.method static synthetic access$902(Lcom/liquable/nemo/main/MainFriendListView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainFriendListView;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method private initOnClick()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    new-instance v1, Lcom/liquable/nemo/main/MainFriendListView$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainFriendListView$3;-><init>(Lcom/liquable/nemo/main/MainFriendListView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendListView;->setViewProfileBtn(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    new-instance v1, Lcom/liquable/nemo/main/MainFriendListView$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainFriendListView$4;-><init>(Lcom/liquable/nemo/main/MainFriendListView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendListView;->setOnGroupIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    new-instance v1, Lcom/liquable/nemo/main/MainFriendListView$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainFriendListView$5;-><init>(Lcom/liquable/nemo/main/MainFriendListView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 387
    return-void
.end method

.method private initSearchBarWidget(Landroid/view/View;)V
    .locals 2
    .param p1, "mainFriendListView"    # Landroid/view/View;

    .prologue
    .line 390
    const v0, 0x7f080300

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/SearchBarWidget;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    .line 391
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const v1, 0x7f0d04fd

    invoke-virtual {v0, v1, p0}, Lcom/liquable/nemo/widget/SearchBarWidget;->init(ILcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 392
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->setVisibility(I)V

    .line 393
    return-void
.end method

.method private initSearchFriendsItem(Lcom/actionbarsherlock/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 396
    const v0, 0x7f080390

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->mainSearchFriendsItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 397
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->mainSearchFriendsItem:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->mainSearchFriendsItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendsView:Lcom/actionbarsherlock/widget/SearchView;

    .line 401
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendsView:Lcom/actionbarsherlock/widget/SearchView;

    const v1, 0x7f0d04fd

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/main/MainFriendListView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendsView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 403
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->mainSearchFriendsItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v1, Lcom/liquable/nemo/main/MainFriendListView$6;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$6;-><init>(Lcom/liquable/nemo/main/MainFriendListView;Lcom/actionbarsherlock/view/Menu;)V

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method private isHideRecommendList()Z
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isHideRecommendList()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isExcludeInRecommend()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onUserItemClicked()V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/profile/ProfileSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 490
    return-void
.end method

.method private reloadGroupList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/FriendListView;->resetGroups(Ljava/util/List;)V

    .line 509
    return-void
.end method

.method private reloadRecommendList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "recommendedFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isExcludeInRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->recommendFriendsReloaded:Z

    if-nez v0, :cond_1

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->recommendFriendsReloaded:Z

    .line 517
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/background/ReloadRecommendedFriendsTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/ReloadRecommendedFriendsTask;-><init>()V

    invoke-static {v0, v1}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/FriendListView;->resetRecommendFriends(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public collapseActionView()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->mainSearchFriendsItem:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->isSearchFriendsViewExpanded:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->mainSearchFriendsItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 165
    :cond_0
    return-void
.end method

.method public doOnResume()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/FriendListView;->notifyUserUpdated()V

    .line 170
    return-void
.end method

.method protected doUpdate()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/liquable/nemo/main/MainFriendListView$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainFriendListView$2;-><init>(Lcom/liquable/nemo/main/MainFriendListView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 207
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainFriendListView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SMS_SENT_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 427
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/MainFriendListView;->setHasOptionsMenu(Z)V

    .line 429
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 434
    const v0, 0x7f080390

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 437
    :cond_0
    const v0, 0x7f0f001b

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 439
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView;->initSearchFriendsItem(Lcom/actionbarsherlock/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 447
    const v2, 0x7f03013e

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 448
    .local v1, "mainFriendListView":Landroid/view/View;
    const v2, 0x7f080301

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/friend/FriendListView;

    iput-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    .line 449
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFriendListView;->initOnClick()V

    .line 451
    invoke-direct {p0, v1}, Lcom/liquable/nemo/main/MainFriendListView;->initSearchBarWidget(Landroid/view/View;)V

    .line 453
    const v2, 0x7f030145

    iget-object v3, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, "headerView":Landroid/view/View;
    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/friend/FriendListView;->addHeaderView(Landroid/view/View;)V

    .line 455
    iget-object v2, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/FriendListView;->build(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 456
    return-object v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 461
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 466
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 468
    :goto_0
    return v0

    .line 463
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainFriendListView;->showSearchBarWidget()V

    .line 468
    const/4 v0, 0x1

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x7f08038f
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/FriendManager;->listVisibleFriendsOrderByState()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/MainFriendListView;->reloadFriendList(Ljava/util/List;)V

    .line 476
    const/4 v0, 0x0

    return v0

    .line 474
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;

    .line 475
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->findVisibleAccountByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->hideKeyboard()V

    .line 484
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadFriendList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lcom/liquable/nemo/friend/FriendListView;->resetFriends(Ljava/util/List;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    iget-object v3, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFriendListView;->isHideRecommendList()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/liquable/nemo/friend/FriendListView;->showRecommendFriendList(Z)Z

    .line 496
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->isHideContactList()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/FriendListView;->showContactList(Z)Z

    .line 497
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendListView;->showUserProfile(Z)V

    .line 498
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendListView;->showGroupList(Z)V

    .line 505
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 495
    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/FriendListView;->showRecommendFriendList(Z)Z

    .line 501
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/FriendListView;->showContactList(Z)Z

    .line 502
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/FriendListView;->showUserProfile(Z)V

    .line 503
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->friendListView:Lcom/liquable/nemo/friend/FriendListView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/FriendListView;->showGroupList(Z)V

    goto :goto_1
.end method

.method public showSearchBarWidget()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->requestEditTextFocus()V

    .line 526
    return-void
.end method
