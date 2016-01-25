.class public Lcom/liquable/nemo/setting/BlockListActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "BlockListActivity.java"


# instance fields
.field private friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

.field private isReceiverRegistered:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/liquable/nemo/setting/BlockListActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/BlockListActivity$1;-><init>(Lcom/liquable/nemo/setting/BlockListActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/BlockListActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/setting/BlockListActivity;)Lcom/liquable/nemo/friend/FriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/BlockListActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/setting/BlockListActivity;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/BlockListActivity;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/BlockListActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/BlockListActivity;->unblockFriend(Lcom/liquable/nemo/friend/model/Account;)V

    return-void
.end method

.method private registReceivers()V
    .locals 2

    .prologue
    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/setting/BlockListActivity;->isReceiverRegistered:Z

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/liquable/nemo/setting/BlockListActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/setting/BlockListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method private unblockFriend(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 2
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 118
    new-instance v0, Lcom/liquable/nemo/setting/BlockListActivity$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/liquable/nemo/setting/BlockListActivity$3;-><init>(Lcom/liquable/nemo/setting/BlockListActivity;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 149
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/BlockListActivity$3;->execute([Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method private unregistReceivers()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/BlockListActivity;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/setting/BlockListActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/BlockListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/BlockListActivity;->isReceiverRegistered:Z

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BlockListActivity;->unregistReceivers()V

    .line 50
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 51
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/BlockListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 56
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/BlockListActivity;->setContentView(I)V

    .line 57
    return-void
.end method

.method protected onLoggedInResume()V
    .locals 5

    .prologue
    .line 61
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInResume()V

    .line 62
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BlockListActivity;->registReceivers()V

    .line 63
    const v2, 0x7f080071

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 64
    .local v1, "blockedMemberListView":Landroid/widget/ListView;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/FriendManager;->listBlockedFriends()Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "blockedFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v2, Lcom/liquable/nemo/friend/FriendListAdapter;

    .line 67
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/liquable/nemo/friend/FriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/liquable/nemo/setting/BlockListActivity;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    .line 71
    iget-object v2, p0, Lcom/liquable/nemo/setting/BlockListActivity;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    new-instance v2, Lcom/liquable/nemo/setting/BlockListActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/BlockListActivity$2;-><init>(Lcom/liquable/nemo/setting/BlockListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    return-void
.end method
