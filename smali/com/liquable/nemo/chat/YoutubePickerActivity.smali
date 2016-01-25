.class public Lcom/liquable/nemo/chat/YoutubePickerActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "YoutubePickerActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;,
        Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;,
        Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;,
        Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    }
.end annotation


# static fields
.field private static final MAX_RESULTS:I = 0x19

.field private static final debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final apiClient:Lcom/liquable/nemo/youtube/YoutubeApiClient;

.field private final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private homeTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;>;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isBroadcastReceiverRegistered:Z

.field private isSearchViewExpanded:Z

.field private final lists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;",
            "Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

.field private preMode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

.field private querySuggestionTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private searchKey:Ljava/lang/String;

.field private searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;>;"
        }
    .end annotation
.end field

.field private searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

.field private suggestionCursor:Landroid/database/MatrixCursor;

.field private tabs:Landroid/view/View;

.field private youtubeListView:Landroid/widget/ListView;

.field private youtubeProgressBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    const-class v0, Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->buttons:Ljava/util/List;

    .line 302
    new-instance v0, Lcom/liquable/nemo/youtube/YoutubeApiClient;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/youtube/YoutubeApiClient;-><init>(Lcom/liquable/nemo/http/NemoHttpService;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->apiClient:Lcom/liquable/nemo/youtube/YoutubeApiClient;

    .line 307
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$1;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->lists:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->preMode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->preMode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->setMode(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->lists:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->isSearchViewExpanded:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/liquable/nemo/chat/YoutubePickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->isSearchViewExpanded:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/database/MatrixCursor;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/liquable/nemo/chat/YoutubePickerActivity;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;
    .param p1, "x1"    # Landroid/database/MatrixCursor;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/chat/YoutubePickerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionWithSearchKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/youtube/YoutubeApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->apiClient:Lcom/liquable/nemo/youtube/YoutubeApiClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static createIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private querySuggestionWithSearchKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 510
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    .line 515
    :cond_0
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 549
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    .line 550
    return-void
.end method

.method private registBroadCastReceiver()V
    .locals 2

    .prologue
    .line 553
    iget-boolean v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->isBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 556
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->isBroadcastReceiverRegistered:Z

    .line 557
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 558
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setMode(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V
    .locals 5
    .param p1, "mode"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .prologue
    const/4 v3, 0x0

    .line 563
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .line 564
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->lists:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;

    .line 565
    .local v1, "youtubeList":Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;
    sget-object v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    if-ne p1, v2, :cond_1

    .line 566
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->reset()V

    .line 567
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->tabs:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeListView:Landroid/widget/ListView;

    iget-object v4, v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->adapter:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 575
    invoke-virtual {v1, v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->run(Z)V

    .line 576
    return-void

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->tabs:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->buttons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 571
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private trimCacheDir()V
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Lcom/liquable/nemo/util/FileCacheManager;->needToTrimTempDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$9;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$9;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 586
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    :cond_0
    return-void
.end method

.method private unregistBroadcastReceiver()V
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->isBroadcastReceiverRegistered:Z

    .line 595
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private updateRecentSearchKeys(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 599
    new-instance v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getYoutubeRecentSearchKeys()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 600
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 605
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 606
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->setYoutubeRecentSearchKeys(Ljava/util/List;)V

    .line 607
    return-void

    .line 602
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 603
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 334
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->homeTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->homeTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->unregistBroadcastReceiver()V

    .line 344
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 345
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 351
    sget-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 354
    if-ne p2, v1, :cond_0

    .line 355
    invoke-virtual {p0, v1, p3}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 356
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->finish()V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d054a

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 364
    const v2, 0x7f030049

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->setContentView(I)V

    .line 366
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 368
    const v2, 0x7f080102

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->tabs:Landroid/view/View;

    .line 370
    invoke-static {}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->values()[Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 371
    .local v1, "mode":Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->access$900(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    move-result-object v5

    if-nez v5, :cond_0

    .line 372
    iget-object v5, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->lists:Ljava/util/Map;

    new-instance v6, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;

    iget-object v7, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v6, p0, v7}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/util/ImageLoader;)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->lists:Ljava/util/Map;

    new-instance v6, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget-object v7, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->access$900(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->buttonResId:I
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->access$1000(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 377
    new-instance v5, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;

    invoke-direct {v5, p0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v5, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->buttons:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "mode":Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    :cond_1
    const v2, 0x7f080129

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeListView:Landroid/widget/ListView;

    .line 388
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeListView:Landroid/widget/ListView;

    new-instance v3, Lcom/liquable/nemo/chat/YoutubePickerActivity$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$3;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 401
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeListView:Landroid/widget/ListView;

    new-instance v3, Lcom/liquable/nemo/chat/YoutubePickerActivity$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$4;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 416
    const v2, 0x7f08012a

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeProgressBar:Landroid/view/View;

    .line 417
    invoke-direct {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->registBroadCastReceiver()V

    .line 418
    invoke-direct {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->trimCacheDir()V

    .line 420
    sget-object v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->HOME:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->setMode(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V

    .line 421
    return-void
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const v5, 0x7f08004e

    const/4 v4, 0x1

    .line 425
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 426
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v2, 0x7f0f0015

    invoke-virtual {v0, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 428
    const v2, 0x7f080383

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 429
    .local v1, "searchVideoItem":Lcom/actionbarsherlock/view/MenuItem;
    new-instance v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 445
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    .line 446
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    const v3, 0x7f0d054e

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 448
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v3, Lcom/liquable/nemo/chat/YoutubePickerActivity$6;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$6;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->setOnSuggestionListener(Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;)V

    .line 465
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 466
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    new-instance v3, Lcom/liquable/nemo/chat/YoutubePickerActivity$7;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$7;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 474
    return v4
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 479
    sget-object v1, Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryTextChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 480
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->lists:Ljava/util/Map;

    sget-object v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;

    .line 482
    .local v0, "youtubeList":Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->reset()V

    .line 483
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchKey:Ljava/lang/String;

    .line 488
    .end local v0    # "youtubeList":Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;
    :goto_0
    return v4

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionWithSearchKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 493
    sget-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQueryTextSubmit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 494
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->updateRecentSearchKeys(Ljava/lang/String;)V

    .line 496
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchKey:Ljava/lang/String;

    .line 497
    sget-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->setMode(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 501
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 505
    const/4 v0, 0x0

    return v0
.end method
