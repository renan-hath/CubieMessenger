.class public Lcom/liquable/nemo/friend/RecommendFriendFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "RecommendFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/RecommendFriendFragment$RecommendFriendCallback;
    }
.end annotation


# instance fields
.field private fragmentView:Landroid/view/View;

.field private friendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

.field private friendListView:Landroid/widget/ListView;

.field private isLoadingRecommendList:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/liquable/nemo/friend/RecommendFriendFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/RecommendFriendFragment$1;-><init>(Lcom/liquable/nemo/friend/RecommendFriendFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/RecommendFriendFragment;)Lcom/liquable/nemo/friend/RecommendFriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/RecommendFriendFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/liquable/nemo/friend/RecommendFriendFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/RecommendFriendFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->isLoadingRecommendList:Z

    return p1
.end method

.method private initRecommendView()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListView:Landroid/widget/ListView;

    .line 76
    new-instance v0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListView:Landroid/widget/ListView;

    new-instance v1, Lcom/liquable/nemo/friend/RecommendFriendFragment$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/RecommendFriendFragment$2;-><init>(Lcom/liquable/nemo/friend/RecommendFriendFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->reloadRecommendFriend()V

    .line 93
    return-void
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.friend.model.FRIEND_EVENT"

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
    .line 71
    const-class v0, Lcom/liquable/nemo/friend/RecommendFriendFragment$RecommendFriendCallback;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    const v0, 0x7f0300bc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->fragmentView:Landroid/view/View;

    .line 100
    invoke-direct {p0}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->initRecommendView()V

    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method reloadRecommendFriend()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->isLoadingRecommendList:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isExcludeInRecommend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment;->isLoadingRecommendList:Z

    .line 110
    new-instance v0, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;-><init>(Lcom/liquable/nemo/friend/RecommendFriendFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 134
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
