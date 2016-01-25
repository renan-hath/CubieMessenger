.class public Lcom/liquable/nemo/main/MainRecommendForumView;
.super Lcom/liquable/nemo/main/MainFragment;
.source "MainRecommendForumView.java"


# static fields
.field private static final CODE_CREATE_BOARD:I


# instance fields
.field private boardCategoryListView:Landroid/widget/ListView;

.field private hasMore:Z

.field private hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;

.field private listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/HotArticle;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/liquable/nemo/main/MainRecommendForumView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainRecommendForumView$1;-><init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/main/MainRecommendForumView;)Lcom/liquable/nemo/forum/HotArticleListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainRecommendForumView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/main/MainRecommendForumView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainRecommendForumView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainRecommendForumView;->tryListHotArticles(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/main/MainRecommendForumView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainRecommendForumView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/main/MainRecommendForumView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainRecommendForumView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->boardCategoryListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/main/MainRecommendForumView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainRecommendForumView;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$502(Lcom/liquable/nemo/main/MainRecommendForumView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainRecommendForumView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hasMore:Z

    return p1
.end method

.method private createViewForRecommendView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    const v2, 0x7f03015d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "fragmentView":Landroid/view/View;
    const v2, 0x7f0801e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->boardCategoryListView:Landroid/widget/ListView;

    .line 92
    const v2, 0x7f0801d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 94
    new-instance v2, Lcom/liquable/nemo/forum/HotArticleListAdapter;

    invoke-direct {v2}, Lcom/liquable/nemo/forum/HotArticleListAdapter;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;

    .line 95
    iget-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->boardCategoryListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->boardCategoryListView:Landroid/widget/ListView;

    new-instance v3, Lcom/liquable/nemo/main/MainRecommendForumView$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/main/MainRecommendForumView$2;-><init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 116
    iget-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->boardCategoryListView:Landroid/widget/ListView;

    new-instance v3, Lcom/liquable/nemo/main/MainRecommendForumView$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/main/MainRecommendForumView$3;-><init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    const v2, 0x7f0802ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, "viewCategoryListBtn":Landroid/view/View;
    new-instance v2, Lcom/liquable/nemo/main/MainRecommendForumView$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/main/MainRecommendForumView$4;-><init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-object v0
.end method

.method private tryListHotArticles(Z)V
    .locals 3
    .param p1, "loadMore"    # Z

    .prologue
    .line 236
    iget-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    .line 242
    .local v0, "needToLoad":Z
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hasMore:Z

    if-eqz v1, :cond_2

    .line 243
    const/4 v0, 0x1

    .line 246
    :cond_2
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumDaemon;->shouldReloadHotArticles()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    const/4 v0, 0x1

    .line 248
    iget-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->reset()V

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    const/4 v0, 0x1

    .line 253
    iget-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->reset()V

    .line 269
    :cond_4
    if-eqz v0, :cond_0

    .line 273
    new-instance v1, Lcom/liquable/nemo/main/MainRecommendForumView$5;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainRecommendForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/main/MainRecommendForumView$5;-><init>(Lcom/liquable/nemo/main/MainRecommendForumView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 297
    iget-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.forum.model.FORUM_EVENT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 172
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/main/MainFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    return-void

    .line 175
    :pswitch_0
    new-instance v1, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainRecommendForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v0, "forumBoardDto"

    .line 176
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->creator:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-direct {v1, v2, v0, v3}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/main/MainRecommendForumView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumDaemon;->isInSupportedCountries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/MainRecommendForumView;->setHasOptionsMenu(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 194
    const v0, 0x7f0f001a

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 195
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/main/MainRecommendForumView;->createViewForRecommendView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView;->listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/main/MainFragment;->onDestroy()V

    .line 211
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 215
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 217
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainRecommendForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/forum/CreateBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/main/MainRecommendForumView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 223
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x7f08038e
        :pswitch_0
    .end packed-switch
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->setUserVisibleHint(Z)V

    .line 229
    if-eqz p1, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/main/MainRecommendForumView;->tryListHotArticles(Z)V

    .line 233
    :cond_0
    return-void
.end method
