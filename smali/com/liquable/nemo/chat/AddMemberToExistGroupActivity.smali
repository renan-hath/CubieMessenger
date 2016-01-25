.class public Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "AddMemberToExistGroupActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# static fields
.field public static final KEY_MEMBERS:Ljava/lang/String; = "MEMBERS"

.field public static final KEY_TOPIC:Ljava/lang/String; = "TOPIC"


# instance fields
.field private alreadySelectedIncludeSelf:I

.field private friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

.field private mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

.field private searchFriendKeyword:Ljava/lang/String;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private selectMemberListView:Landroid/widget/ListView;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->updateTitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->topic:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method private loadListItem()V
    .locals 4

    .prologue
    .line 67
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->listSelectableFriends(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "selectableFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->reset(Ljava/util/List;)V

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v3, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    .line 72
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 71
    invoke-virtual {p0, v0, v2}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->resetWithSearchKey(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 6

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0050

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->alreadySelectedIncludeSelf:I

    iget-object v5, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    .line 208
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getSelectedCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc8

    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 207
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method


# virtual methods
.method public intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    .local p2, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/Account;

    .line 58
    .local v1, "t":Lcom/liquable/nemo/friend/model/Account;
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v1    # "t":Lcom/liquable/nemo/friend/model/Account;
    :cond_1
    return-object v0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const v1, 0x7f03001a

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "MEMBERS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->alreadySelectedIncludeSelf:I

    .line 83
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "TOPIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->topic:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->topic:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->finish()V

    .line 156
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v1, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    .line 89
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->alreadySelectedIncludeSelf:I

    rsub-int v4, v4, 0xc8

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    .line 92
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    new-instance v2, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$1;-><init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->setFriendCheckedListener(Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;)V

    .line 99
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->updateTitle()V

    .line 100
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->selectMemberListView:Landroid/widget/ListView;

    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->selectMemberListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, "confirmAddMemberBtn":Landroid/widget/Button;
    new-instance v1, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;-><init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->selectMemberListView:Landroid/widget/ListView;

    new-instance v2, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$3;-><init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 161
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 162
    const v1, 0x7f080359

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 163
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v2, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$4;-><init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 175
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 176
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const v2, 0x7f0d04fd

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 178
    const/4 v1, 0x1

    return v1
.end method

.method protected onLoggedInResume()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInResume()V

    .line 184
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->listSelectableFriends(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "selectableFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const v1, 0x7f0d038f

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->finish()V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->reset(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchFriendKeyword:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->loadListItem()V

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 203
    const/4 v0, 0x0

    return v0
.end method
