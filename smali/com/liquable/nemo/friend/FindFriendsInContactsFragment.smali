.class public Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "FindFriendsInContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;
    }
.end annotation


# instance fields
.field private contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 77
    new-instance v0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$1;-><init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->importFromContacts()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)Lcom/liquable/nemo/friend/ContactListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    return-object v0
.end method

.method private importFromContacts()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d04d0

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 104
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/background/SyncAllContactsTask;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/liquable/nemo/background/SyncAllContactsTask;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SMS_SENT_ACTION"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 111
    const v3, 0x7f0300b3

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/friend/FindFriendsInContactsActivity$CreateIntent;->isImportImmediately(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->importFromContacts()V

    .line 120
    :cond_0
    const v3, 0x7f0801f0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 121
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Lcom/liquable/nemo/widget/SeparatedListAdapter;

    invoke-direct {v2}, Lcom/liquable/nemo/widget/SeparatedListAdapter;-><init>()V

    .line 123
    .local v2, "separatedListAdapter":Lcom/liquable/nemo/widget/SeparatedListAdapter;
    new-instance v3, Lcom/liquable/nemo/friend/ContactListAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 124
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v6}, Lcom/liquable/nemo/friend/ContactListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v3, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    .line 126
    new-instance v3, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;-><init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)V

    new-array v4, v7, [Ljava/lang/Void;

    .line 148
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d027f

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0203fb

    new-instance v5, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;

    .line 152
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$ImportAdapter;-><init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;Landroid/content/Context;)V

    sget-object v6, Lcom/liquable/nemo/friend/FriendListView$Type;->IMPORT:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 153
    invoke-virtual {v6}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d02c4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02051d

    iget-object v5, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    sget-object v6, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 157
    invoke-virtual {v6}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    new-instance v3, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$3;-><init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    return-object v0
.end method
