.class public Lcom/liquable/nemo/main/MainForumView;
.super Lcom/liquable/nemo/main/MainFragment;
.source "MainForumView.java"


# static fields
.field private static final CODE_CREATE_BOARD:I


# instance fields
.field private favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

.field private lastSyncFavoriteBoardtime:J

.field private listFavoriteTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mainForumViewProgressBar:Landroid/view/View;

.field private needReloadFavorite:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

.field private step:I

.field private syncBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;
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

.field private tutorialTextView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFragment;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/main/MainForumView;->lastSyncFavoriteBoardtime:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainForumView;->needReloadFavorite:Z

    .line 56
    new-instance v0, Lcom/liquable/nemo/main/MainForumView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainForumView$1;-><init>(Lcom/liquable/nemo/main/MainForumView;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/liquable/nemo/main/MainForumView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/liquable/nemo/main/MainForumView;->lastSyncFavoriteBoardtime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/liquable/nemo/main/MainForumView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/liquable/nemo/main/MainForumView;->needReloadFavorite:Z

    return p1
.end method

.method static synthetic access$208(Lcom/liquable/nemo/main/MainForumView;)I
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 50
    iget v0, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/main/MainForumView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainForumView;->shouldShowTutorial()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/main/MainForumView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->mainForumViewProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/liquable/nemo/main/MainForumView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView;->listFavoriteTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/liquable/nemo/main/MainForumView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->tutorialTextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/main/MainForumView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainForumView;->trySyncFromServer()V

    return-void
.end method

.method static synthetic access$902(Lcom/liquable/nemo/main/MainForumView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainForumView;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView;->syncBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method private createViewForForum(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    const v3, 0x7f03013c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "fragmentView":Landroid/view/View;
    const v3, 0x7f0801e1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 95
    .local v0, "boardListView":Landroid/widget/ListView;
    const v3, 0x7f0802fe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/main/MainForumView;->mainForumViewProgressBar:Landroid/view/View;

    .line 96
    const v3, 0x7f0802fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/main/MainForumView;->tutorialTextView:Landroid/view/View;

    .line 98
    const v3, 0x7f0802ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "viewCategoryListBtn":Landroid/view/View;
    new-instance v3, Lcom/liquable/nemo/main/MainForumView$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/main/MainForumView$2;-><init>(Lcom/liquable/nemo/main/MainForumView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v3, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    invoke-direct {v3}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;-><init>()V

    iput-object v3, p0, Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    .line 109
    iget-object v3, p0, Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    new-instance v3, Lcom/liquable/nemo/main/MainForumView$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/main/MainForumView$3;-><init>(Lcom/liquable/nemo/main/MainForumView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    return-object v1
.end method

.method private nextTutorial(II)V
    .locals 3
    .param p1, "showcaseLayoutId"    # I
    .param p2, "showcaseViewId"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;-><init>()V

    .line 166
    .local v0, "configOptions":Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->blockAnyTouch:Z

    .line 169
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 167
    invoke-static {p1, p2, v1, v2, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(IILandroid/app/Activity;FLcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    .line 172
    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->setEndButtonAlignParentLeftRight(I)V

    .line 176
    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    new-instance v2, Lcom/liquable/nemo/main/MainForumView$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/main/MainForumView$4;-><init>(Lcom/liquable/nemo/main/MainForumView;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->overrideButtonClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private shouldShowTutorial()V
    .locals 3

    .prologue
    const v2, 0x7f080311

    .line 256
    iget v0, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    if-nez v0, :cond_0

    .line 257
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->forum:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->showShowcaseView(Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;)V

    .line 258
    const v0, 0x7f030167

    invoke-direct {p0, v0, v2}, Lcom/liquable/nemo/main/MainForumView;->nextTutorial(II)V

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 260
    const v0, 0x7f03016c

    invoke-direct {p0, v0, v2}, Lcom/liquable/nemo/main/MainForumView;->nextTutorial(II)V

    goto :goto_0

    .line 261
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 262
    const v0, 0x7f03016d

    const v1, 0x7f0802ff

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/main/MainForumView;->nextTutorial(II)V

    goto :goto_0

    .line 263
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 264
    const v0, 0x7f03016b

    const v1, 0x7f080314

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/main/MainForumView;->nextTutorial(II)V

    goto :goto_0

    .line 265
    :cond_3
    iget v0, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 266
    const v0, 0x7f030169

    const v1, 0x7f08038e

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/main/MainForumView;->nextTutorial(II)V

    goto :goto_0

    .line 268
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/main/MainForumView;->step:I

    goto :goto_0
.end method

.method private tryListAndSyncFavorites()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->listFavoriteTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v0, Lcom/liquable/nemo/main/MainForumView$6;

    .line 279
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/main/MainForumView$6;-><init>(Lcom/liquable/nemo/main/MainForumView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->listFavoriteTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 314
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->listFavoriteTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private trySyncFromServer()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->syncBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liquable/nemo/main/MainForumView;->lastSyncFavoriteBoardtime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 327
    new-instance v0, Lcom/liquable/nemo/main/MainForumView$7;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/main/MainForumView$7;-><init>(Lcom/liquable/nemo/main/MainForumView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->syncBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 347
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->syncBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected doOnResume()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainForumView;->needReloadFavorite:Z

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainForumView;->needReloadFavorite:Z

    .line 147
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainForumView;->tryListAndSyncFavorites()V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->notifyDataSetChanged()V

    .line 150
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainForumView;->trySyncFromServer()V

    goto :goto_0
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 161
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/main/MainFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    return-void

    .line 192
    :pswitch_0
    new-instance v1, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v0, "forumBoardDto"

    .line 193
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->creator:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-direct {v1, v2, v0, v3}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 192
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/main/MainForumView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumDaemon;->isInSupportedCountries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/MainForumView;->setHasOptionsMenu(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 211
    const v0, 0x7f0f001a

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 212
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/main/MainForumView;->createViewForForum(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 223
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 231
    :goto_0
    return v0

    .line 225
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/forum/CreateBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/main/MainForumView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x7f08038e
        :pswitch_0
    .end packed-switch
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->setUserVisibleHint(Z)V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->shouldShowCaseForum()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/main/MainForumView$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainForumView$5;-><init>(Lcom/liquable/nemo/main/MainForumView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
