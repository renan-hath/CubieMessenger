.class public Lcom/liquable/nemo/forum/BoardListByCategoryFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "BoardListByCategoryFragment.java"


# static fields
.field private static final BOARD_PAGE_SIZE:I = 0x1e


# instance fields
.field private boardCategory:Ljava/lang/String;

.field private boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

.field private currentPage:I

.field private loadingTask:Lcom/liquable/nemo/util/RpcAsyncTask;
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

.field private progressBar:Landroid/view/View;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$1;-><init>(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->currentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Lcom/liquable/nemo/forum/BoardListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->tryLoadBoards()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$308(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->loadingTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method private tryLoadBoards()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->loadingTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;-><init>(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->loadingTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->loadingTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.liquable.nemo.forum.model.FORUM_EVENT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v2, 0x7f0300ad

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->progressBar:Landroid/view/View;

    .line 78
    new-instance v2, Lcom/liquable/nemo/forum/BoardListAdapter;

    invoke-direct {v2}, Lcom/liquable/nemo/forum/BoardListAdapter;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;->getBoardCategory(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardCategory:Ljava/lang/String;

    .line 81
    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 82
    .local v0, "boardListView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    new-instance v2, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$2;-><init>(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v2, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$3;-><init>(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 118
    invoke-direct {p0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->tryLoadBoards()V

    .line 119
    return-object v1
.end method
