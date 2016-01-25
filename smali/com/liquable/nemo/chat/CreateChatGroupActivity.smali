.class public Lcom/liquable/nemo/chat/CreateChatGroupActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "CreateChatGroupActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# static fields
.field public static final CODE_REQUEST_MEMBERS:I = 0x1

.field public static final KEY_DEFAULT_SELECTED_MEMBER:Ljava/lang/String; = "KEY_DEFAULT_SELECTED_MEMBER"

.field public static final KEY_FROM_TOPIC:Ljava/lang/String; = "KEY_FROM_TOPIC"


# instance fields
.field private friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

.field private mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

.field private memberTitle:Landroid/widget/TextView;

.field private searchFriendKeyword:Ljava/lang/String;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->updateTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method private loadListItem()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/FriendManager;->listSelectableFriends()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->reset(Ljava/util/List;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->resetWithSearchKey(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->memberTitle:Landroid/widget/TextView;

    const v1, 0x7f0d046b

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    .line 201
    invoke-virtual {v4}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getSelectedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc7

    .line 202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 200
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const v8, 0x7f0d0144

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 66
    const v7, 0x7f030026

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->setContentView(I)V

    .line 69
    const v7, 0x7f0800a3

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->memberTitle:Landroid/widget/TextView;

    .line 71
    const v7, 0x7f0800a2

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 72
    .local v3, "groupNameEditText":Landroid/widget/EditText;
    const v7, 0x7f0800a5

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    .local v1, "confirmCreateGroupBtn":Landroid/widget/Button;
    new-instance v7, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;

    invoke-direct {v7, p0, v3}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;-><init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "KEY_FROM_TOPIC"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "topic":Ljava/lang/String;
    const v7, 0x7f0800a4

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 127
    .local v4, "selectedMemberListView":Landroid/widget/ListView;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v7}, Lcom/liquable/nemo/friend/model/FriendManager;->listSelectableFriends()Ljava/util/List;

    move-result-object v6

    .line 129
    .local v6, "unselectedFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v7, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    .line 130
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v8

    const/16 v9, 0xc7

    invoke-direct {v7, p0, v8, v6, v9}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V

    iput-object v7, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    .line 134
    iget-object v7, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    new-instance v8, Lcom/liquable/nemo/chat/CreateChatGroupActivity$2;

    invoke-direct {v8, p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$2;-><init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)V

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->setFriendCheckedListener(Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;)V

    .line 141
    if-eqz v5, :cond_0

    .line 142
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->listFriendsInTopic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 143
    .local v2, "defaultMembers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 144
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v8, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->setItemChecked(Lcom/liquable/nemo/friend/model/Account;Z)V

    goto :goto_0

    .line 148
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v2    # "defaultMembers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :cond_0
    iget-object v7, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    new-instance v7, Lcom/liquable/nemo/chat/CreateChatGroupActivity$3;

    invoke-direct {v7, p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$3;-><init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->updateTitle()V

    .line 161
    return-void
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 166
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 167
    const v1, 0x7f080359

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 168
    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v2, Lcom/liquable/nemo/chat/CreateChatGroupActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$4;-><init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 180
    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 181
    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const v2, 0x7f0d04fd

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 183
    const/4 v1, 0x1

    return v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    .line 189
    invoke-direct {p0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->loadListItem()V

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 196
    const/4 v0, 0x0

    return v0
.end method
