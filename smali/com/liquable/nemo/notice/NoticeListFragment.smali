.class public Lcom/liquable/nemo/notice/NoticeListFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "NoticeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/notice/NoticeListFragment$NoticeListCallback;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_MESSAGE:I = 0x64


# instance fields
.field private adItemController:Lcom/liquable/nemo/ads/AdItemController;

.field private allNotices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;"
        }
    .end annotation
.end field

.field private checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private indexOfCurrentPage:I

.field private noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->allNotices:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->indexOfCurrentPage:I

    .line 55
    new-instance v0, Lcom/liquable/nemo/notice/NoticeListFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/notice/NoticeListFragment$1;-><init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/notice/NoticeListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/notice/NoticeListFragment;)Lcom/liquable/nemo/notice/NoticeListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/notice/NoticeListFragment;)Lcom/liquable/nemo/ads/AdItemController;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->adItemController:Lcom/liquable/nemo/ads/AdItemController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/notice/NoticeListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->createAdwaysCampaignButton()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/notice/NoticeListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->allNotices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/notice/NoticeListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->loadMoreItems()V

    return-void
.end method

.method private createAdwaysCampaignButton()Landroid/view/View;
    .locals 5

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03011e

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "newConvertView":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/notice/NoticeListFragment$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/notice/NoticeListFragment$2;-><init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    return-object v0
.end method

.method private loadMoreItems()V
    .locals 4

    .prologue
    .line 111
    iget v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->indexOfCurrentPage:I

    mul-int/lit8 v1, v2, 0x64

    .line 112
    .local v1, "offset":I
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v1}, Lcom/liquable/nemo/notice/model/NoticeManager;->listAllNoticesFromDb(II)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "moreNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->allNotices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    iget-object v3, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->allNotices:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/notice/NoticeListView;->resetAllNotices(Ljava/util/List;)V

    .line 117
    iget v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->indexOfCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->indexOfCurrentPage:I

    .line 119
    :cond_0
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 263
    iget v1, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->indexOfCurrentPage:I

    mul-int/lit8 v0, v1, 0x64

    .line 264
    .local v0, "numberOfTotalNotices":I
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/notice/model/NoticeManager;->listAllNoticesFromDb(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->allNotices:Ljava/util/List;

    .line 265
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->allNotices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/notice/NoticeListView;->resetAllNotices(Ljava/util/List;)V

    .line 266
    return-void
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.notice.model.NoticeEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

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
    .line 107
    const-class v0, Lcom/liquable/nemo/notice/NoticeListFragment$NoticeListCallback;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/notice/NoticeListFragment;->setHasOptionsMenu(Z)V

    .line 125
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 129
    const v0, 0x7f08037b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    const v0, 0x7f0f000f

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 139
    const v2, 0x7f0300ba

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "fragmentView":Landroid/view/View;
    const v2, 0x7f0801f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/notice/NoticeListView;

    iput-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    .line 143
    new-instance v2, Lcom/liquable/nemo/ads/AdItemController;

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/liquable/nemo/ads/AdItemController;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->adItemController:Lcom/liquable/nemo/ads/AdItemController;

    .line 149
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->adItemController:Lcom/liquable/nemo/ads/AdItemController;

    iget-object v3, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/ads/AdItemController;->showAdsInHeader(Landroid/widget/ListView;)Z

    move-result v1

    .line 150
    .local v1, "showAds":Z
    if-nez v1, :cond_0

    .line 154
    new-instance v2, Lcom/liquable/nemo/notice/NoticeListFragment$3;

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/notice/NoticeListFragment$3;-><init>(Lcom/liquable/nemo/notice/NoticeListFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 175
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/notice/NoticeListView;->init(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 180
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    new-instance v3, Lcom/liquable/nemo/notice/NoticeListFragment$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/notice/NoticeListFragment$4;-><init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/notice/NoticeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    iget-object v2, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;

    new-instance v3, Lcom/liquable/nemo/notice/NoticeListFragment$5;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/notice/NoticeListFragment$5;-><init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/notice/NoticeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 222
    new-instance v2, Lcom/liquable/nemo/notice/NoticeListFragment$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/notice/NoticeListFragment$6;-><init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V

    new-array v3, v5, [Ljava/lang/Void;

    .line 229
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/notice/NoticeListFragment$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 237
    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onDestroy()V

    .line 242
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 246
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 253
    :goto_0
    return v0

    .line 248
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/model/NoticeManager;->markNoticesAsRead()V

    .line 253
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x7f08037b
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onResume()V

    .line 259
    invoke-direct {p0}, Lcom/liquable/nemo/notice/NoticeListFragment;->update()V

    .line 260
    return-void
.end method
