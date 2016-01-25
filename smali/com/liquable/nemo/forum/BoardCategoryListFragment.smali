.class public Lcom/liquable/nemo/forum/BoardCategoryListFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "BoardCategoryListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# static fields
.field private static final BOARD_PAGE_SIZE:I = 0x1e


# instance fields
.field private boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

.field private categoryAdapter:Lcom/liquable/nemo/forum/BoardCategoryListAdapter;

.field private listView:Landroid/widget/ListView;

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

.field private searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;>;"
        }
    .end annotation
.end field

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToCategoryAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/forum/BoardCategoryListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/liquable/nemo/forum/BoardCategoryListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToBoardList(Ljava/util/List;)V

    return-void
.end method

.method private initSearchItem(Lcom/actionbarsherlock/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 44
    const v1, 0x7f08038a

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 45
    .local v0, "mainSearchFriendsItem":Lcom/actionbarsherlock/view/MenuItem;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 49
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const v2, 0x7f0d00ba

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 51
    new-instance v1, Lcom/liquable/nemo/forum/BoardCategoryListFragment$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment$1;-><init>(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)V

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method private switchToBoardList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/BoardListAdapter;->reset(Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/liquable/nemo/forum/BoardCategoryListFragment$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment$3;-><init>(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    return-void
.end method

.method private switchToCategoryAdapter()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->categoryAdapter:Lcom/liquable/nemo/forum/BoardCategoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/liquable/nemo/forum/BoardCategoryListFragment$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment$4;-><init>(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 68
    const v0, 0x7f08038a

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    const v0, 0x7f0f0018

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->initSearchItem(Lcom/actionbarsherlock/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    const v1, 0x7f0300ab

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 84
    const v1, 0x7f0801d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/SearchBarWidget;

    iput-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    .line 85
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2, p0}, Lcom/liquable/nemo/widget/SearchBarWidget;->init(ILcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 87
    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;

    .line 88
    new-instance v1, Lcom/liquable/nemo/forum/BoardListAdapter;

    invoke-direct {v1}, Lcom/liquable/nemo/forum/BoardListAdapter;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

    .line 89
    new-instance v1, Lcom/liquable/nemo/forum/BoardCategoryListAdapter;

    invoke-direct {v1}, Lcom/liquable/nemo/forum/BoardCategoryListAdapter;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->categoryAdapter:Lcom/liquable/nemo/forum/BoardCategoryListAdapter;

    .line 90
    invoke-direct {p0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToCategoryAdapter()V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->setHasOptionsMenu(Z)V

    .line 92
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onDestroy()V

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080389

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->setVisibility(I)V

    .line 108
    invoke-direct {p0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToCategoryAdapter()V

    .line 114
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->setVisibility(I)V

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return v2

    .line 129
    :cond_0
    new-instance v0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;-><init>(Lcom/liquable/nemo/forum/BoardCategoryListFragment;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
