.class public Lcom/liquable/nemo/forum/ArticleListFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "ArticleListFragment.java"


# static fields
.field private static final CREATE_ARTICLE_RESULT_CODE:I


# instance fields
.field private articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;

.field private bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

.field private bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

.field private boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

.field private boardIconImageView:Lcom/liquable/volley/toolbox/CircleNetworkImageView;

.field private boardTitleTextView:Landroid/widget/TextView;

.field private favoriteBoardItem:Lcom/actionbarsherlock/view/MenuItem;

.field private from:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

.field private hasMoreArticles:Z

.field private headerView:Landroid/widget/FrameLayout;

.field private listArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/view/View;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->hasMoreArticles:Z

    .line 73
    new-instance v0, Lcom/liquable/nemo/forum/ArticleListFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$1;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/model/forum/ForumBoardDto;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/ArticleListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBoardInfoView()V

    return-void
.end method

.method static synthetic access$1002(Lcom/liquable/nemo/forum/ArticleListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->step:I

    return p1
.end method

.method static synthetic access$1008(Lcom/liquable/nemo/forum/ArticleListFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->step:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->step:I

    return v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/forum/ArticleListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->tryShowTutorial()V

    return-void
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/forum/ArticleListFragment;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->favoriteBoard(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/forum/ArticleListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->tryListArticles()V

    return-void
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/forum/ArticleListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->reportAbuseBoard(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/forum/ArticleListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/forum/ArticleListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/forum/ArticleListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->listArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/ArticleListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->setFavoriteIcon(Z)V

    return-void
.end method

.method static synthetic access$2002(Lcom/liquable/nemo/forum/ArticleListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->hasMoreArticles:Z

    return p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->from:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    return-object v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;)Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    return-object v0
.end method

.method static synthetic access$702(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    return-object p1
.end method

.method static synthetic access$800(Lcom/liquable/nemo/forum/ArticleListFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->headerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/forum/ArticleListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->reloadBannerView()V

    return-void
.end method

.method private favoriteBoard(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080384

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "menu":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/forum/ArticleListFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$2;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 205
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/ArticleListFragment$2;->execute([Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method private loadBannerItemView(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "articleListView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/liquable/nemo/forum/ArticleListFragment$3;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/forum/ArticleListFragment$3;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 254
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadBoardInfoView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isCertified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203b6

    .line 261
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardIconImageView:Lcom/liquable/volley/toolbox/CircleNetworkImageView;

    const v1, 0x7f0203b5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 267
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardIconImageView:Lcom/liquable/volley/toolbox/CircleNetworkImageView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 268
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private nextTutorial(II)V
    .locals 2
    .param p1, "showcaseLayoutId"    # I
    .param p2, "showcaseViewId"    # I

    .prologue
    .line 271
    .line 273
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    .line 271
    invoke-static {p1, p2, v0, v1}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(IILandroid/app/Activity;F)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;

    .line 275
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ShowcaseView;->setEndButtonAlignParentLeftRight(I)V

    .line 276
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;

    new-instance v1, Lcom/liquable/nemo/forum/ArticleListFragment$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$4;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ShowcaseView;->overrideButtonClick(Landroid/view/View$OnClickListener;)V

    .line 284
    return-void
.end method

.method private reloadBannerView()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;->updateView()V

    goto :goto_0
.end method

.method private reportAbuseBoard(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 503
    new-instance v0, Lcom/liquable/nemo/forum/ArticleListFragment$10;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$10;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 528
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment$10;->execute([Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method private setFavoriteIcon(Z)V
    .locals 2
    .param p1, "isFavorite"    # Z

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->favoriteBoardItem:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f020079

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->favoriteBoardItem:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f020072

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method private toggleFavorite(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 540
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v0

    .line 541
    .local v0, "isFavoriteBoard":Z
    if-eqz v0, :cond_0

    .line 542
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->unfavoriteBoard(Ljava/lang/Runnable;)V

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->favoriteBoard(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private tryListArticles()V
    .locals 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->hasMoreArticles:Z

    if-nez v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->listArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/liquable/nemo/forum/ArticleListFragment$11;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment$11;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->listArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 588
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->listArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private tryShowTutorial()V
    .locals 2

    .prologue
    .line 592
    iget v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->step:I

    if-nez v0, :cond_0

    .line 593
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->forum_article_list:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->showShowcaseView(Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;)V

    .line 594
    const v0, 0x7f03016a

    const v1, 0x7f080384

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->nextTutorial(II)V

    .line 601
    :goto_0
    return-void

    .line 595
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->step:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 596
    const v0, 0x7f030168

    const v1, 0x7f0801ce

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->nextTutorial(II)V

    goto :goto_0

    .line 598
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->step:I

    goto :goto_0
.end method

.method private unfavoriteBoard(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080384

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 605
    .local v0, "menu":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/forum/ArticleListFragment$12;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$12;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 632
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/ArticleListFragment$12;->execute([Ljava/lang/Object;)V

    .line 633
    return-void
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 215
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
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 288
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    if-nez p1, :cond_0

    .line 293
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/forum/CreateArticleFragment$ResultIntent;->getArticle(Landroid/os/Bundle;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    .line 294
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/Article;
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->addLocalCreateArticle(Lcom/liquable/nemo/forum/model/article/Article;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 300
    const v0, 0x7f0f0016

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 301
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    const v0, 0x7f080386

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 310
    :goto_1
    const v0, 0x7f080384

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->favoriteBoardItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 311
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->setFavoriteIcon(Z)V

    goto :goto_0

    .line 308
    :cond_1
    const v0, 0x7f080387

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;->getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 320
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v6, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/forum/ForumDaemon;->getForumBoardLastUpdateTime(Lcom/liquable/nemo/model/forum/ForumBoardDto;)J

    move-result-wide v2

    .line 321
    .local v2, "localLastUpdateTime":J
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;->getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->from:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    .line 322
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->from:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    iget-object v7, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 323
    invoke-virtual {v7}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/model/forum/BoardCategory;->parse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v8}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enterForumBoard(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;)V

    .line 325
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/forum/ArticleListFragment;->setHasOptionsMenu(Z)V

    .line 326
    const v5, 0x7f0300a9

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 327
    .local v4, "view":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/forum/ArticleListAdapter;

    invoke-direct {v5, v2, v3}, Lcom/liquable/nemo/forum/ArticleListAdapter;-><init>(J)V

    iput-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;

    .line 329
    const v5, 0x7f0800b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->progressBar:Landroid/view/View;

    .line 330
    const v5, 0x7f0801cd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardTitleTextView:Landroid/widget/TextView;

    .line 331
    iget-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardTitleTextView:Landroid/widget/TextView;

    const/4 v6, 0x2

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    const v5, 0x7f0801cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/volley/toolbox/CircleNetworkImageView;

    iput-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardIconImageView:Lcom/liquable/volley/toolbox/CircleNetworkImageView;

    .line 334
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v6, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v6}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/forum/ForumDaemon;->enterForumBoard(Ljava/lang/String;)V

    .line 335
    const v5, 0x7f0801ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 336
    .local v1, "createArticleBtn":Landroid/view/View;
    new-instance v5, Lcom/liquable/nemo/forum/ArticleListFragment$5;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$5;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v5, 0x7f0801ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 368
    .local v0, "articleListView":Landroid/widget/ListView;
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->headerView:Landroid/widget/FrameLayout;

    .line 369
    iget-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 370
    iget-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    new-instance v5, Lcom/liquable/nemo/forum/ArticleListFragment$6;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$6;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    new-instance v5, Lcom/liquable/nemo/forum/ArticleListFragment$7;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$7;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 433
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBoardInfoView()V

    .line 434
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->tryListArticles()V

    .line 435
    invoke-direct {p0, v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerItemView(Landroid/widget/ListView;)V

    .line 436
    return-object v4
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 444
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onDestroyView()V

    .line 445
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 449
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 473
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 451
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->toggleFavorite(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 454
    :pswitch_1
    new-instance v1, Lcom/liquable/nemo/forum/BoardDetailActivity$CreateIntent;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/forum/BoardDetailActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 458
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d02ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/forum/ForumAbuseReasonAdapter;

    invoke-direct {v2}, Lcom/liquable/nemo/forum/ForumAbuseReasonAdapter;-><init>()V

    new-instance v3, Lcom/liquable/nemo/forum/ArticleListFragment$8;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$8;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    .line 459
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 470
    :pswitch_3
    new-instance v1, Lcom/liquable/nemo/forum/EditBoardActivity$CreateIntent;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/forum/EditBoardActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x7f080384
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 478
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onResume()V

    .line 479
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/forum/ArticleListFragment$9;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$9;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    return-void
.end method
