.class public Lcom/liquable/nemo/forum/ArticleReplyListFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "ArticleReplyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/ArticleReplyListFragment$ArticleReplyListCallback;
    }
.end annotation


# static fields
.field private static final PREVIEW_IMAGE:I = 0x1

.field private static final SELECT_PHOTO:I


# instance fields
.field private article:Lcom/liquable/nemo/forum/model/article/Article;

.field private articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

.field private articleReplyListView:Landroid/widget/ListView;

.field private articleView:Landroid/view/View;

.field private boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

.field private contentLayout:Landroid/view/View;

.field private hasMore:Z

.field private inputLayoutMask:Landroid/view/View;

.field likeRpcAsyncTask:Lcom/liquable/nemo/util/RpcAsyncTask;
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

.field private listReplyTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadArticleAndBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadArticleProgressBar:Landroid/view/View;

.field private loadArticleTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/view/View;

.field private triggerLikeIncrease:Z

.field private widgetManager:Lcom/liquable/nemo/chat/WidgetManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/model/forum/ForumBoardDto;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/forum/model/article/Article;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/ArticleReplyListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->reportAbuseArticle(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->deleteForumArticle()V

    return-void
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->listReplyTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$2302(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->triggerLikeIncrease:Z

    return p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->inputLayoutMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->addToFavorite(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->tryListReply()V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->openGallery()V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/chat/WidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    return-object v0
.end method

.method private addToFavorite(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 117
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$1;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$1;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 147
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$1;->execute([Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private deleteForumArticle()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$2;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 192
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$2;->execute([Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method private loadArticle()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 617
    :cond_0
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 662
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadArticleAndBoard()V
    .locals 4

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->getBoardId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "boardId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->getArticleId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "articleId":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleAndBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v2, :cond_0

    .line 610
    :goto_0
    return-void

    .line 563
    :cond_0
    new-instance v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleAndBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 609
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleAndBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private openGallery()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isUseNativeGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p0, v1}, Lcom/liquable/nemo/util/ExternalIntents;->intentPickPhoto(Landroid/support/v4/app/Fragment;I)V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->createSingleSelectIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private reportAbuseArticle(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 478
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 504
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->execute([Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method private tryListReply()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->listReplyTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-boolean v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->hasMore:Z

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->listReplyTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 553
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->listReplyTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 23

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f080221

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 668
    .local v13, "iconImageView":Lcom/liquable/volley/toolbox/NetworkImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f0801dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 669
    .local v20, "nicknameTextView":Landroid/widget/TextView;
    const/4 v3, 0x2

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f0801dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 671
    .local v12, "createTimeTextView":Landroid/widget/TextView;
    const/4 v3, 0x2

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-virtual {v12, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f080229

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 673
    .local v22, "titleTextView":Landroid/widget/TextView;
    const/4 v3, 0x2

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f0801e6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 675
    .local v10, "articlePictureImageView":Lcom/liquable/volley/toolbox/NetworkImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f08022a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 676
    .local v11, "articlePictureImageViewContainer":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f08028a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    .line 677
    .local v17, "likeButton":Landroid/widget/ImageButton;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v4

    .line 678
    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v4

    .line 677
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/model/ForumManager;->isLiked(Ljava/lang/String;)Z

    move-result v19

    .line 679
    .local v19, "liked":Z
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 680
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageButton;->refreshDrawableState()V

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f080223

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 682
    .local v18, "likeCount":Landroid/widget/TextView;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setSelected(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLikeCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    new-instance v3, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    const v3, 0x7f0203f8

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v3, v4}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    .line 722
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-static {v3}, Lcom/liquable/nemo/friend/model/Account;->createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v21

    .line 723
    .local v21, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-virtual/range {v21 .. v21}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v13, v3, v4}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorNickname()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    .line 727
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreateTime()Ljava/util/Date;

    move-result-object v3

    .line 728
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 726
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/forum/model/article/NormalArticle;

    .line 731
    .local v9, "articleBody":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getPictureUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 734
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getPictureImageTargetWidthInDp(Landroid/content/Context;)I

    move-result v15

    .line 737
    .local v15, "imageWidthInDp":I
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getHeight()I

    move-result v3

    mul-int/2addr v3, v15

    int-to-float v3, v3

    .line 738
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v14, v3

    .line 739
    .local v14, "imageHeightInDp":I
    invoke-static {v10, v15, v14}, Lcom/liquable/nemo/util/NemoUIs;->resizeView(Landroid/view/View;II)V

    .line 742
    .end local v14    # "imageHeightInDp":I
    .end local v15    # "imageWidthInDp":I
    :cond_0
    invoke-virtual {v9}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getPictureUrls()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v10, v3, v4}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 745
    new-instance v3, Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/forum/model/article/NormalArticle;)V

    invoke-virtual {v10, v3}, Lcom/liquable/volley/toolbox/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    :cond_1
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->inputLayoutMask:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 760
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->contentLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->setTitle(Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    const v4, 0x7f0802c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 764
    .local v16, "infoView":Landroid/view/View;
    new-instance v3, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    return-void

    .line 758
    .end local v16    # "infoView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->inputLayoutMask:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public backPressed()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->toggleAnyVisibleWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.friend.model.FRIEND_EVENT"

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
    .line 97
    const-class v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$ArticleReplyListCallback;

    return-object v0
.end method

.method public getPictureImageTargetWidthInDp(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const/16 v0, 0x48

    .line 204
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 204
    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v1

    .line 206
    .local v1, "widthInDp":I
    add-int/lit8 v2, v1, -0x48

    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 211
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    if-nez p1, :cond_2

    .line 216
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 217
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    iget-object v5, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V

    .line 221
    .local v1, "previewIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v6}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 222
    .end local v1    # "previewIntent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    if-ne p1, v6, :cond_0

    .line 223
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createForumArticleReply(Z)V

    .line 224
    const-string/jumbo v3, "ARTICLE_REPLY"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .line 226
    .local v0, "articleReply":Lcom/liquable/nemo/forum/model/article/ArticleReply;
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->addLocalReply(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    .line 227
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    .line 233
    const v7, 0x7f0f0017

    invoke-virtual {p2, v7, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 234
    iget-object v7, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    if-nez v7, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const v7, 0x7f08035a

    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 240
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v8}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 241
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v1, v6

    .line 242
    .local v1, "isCreator":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 243
    const v7, 0x7f080388

    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 244
    .local v0, "deleteArticleItem":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v0, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 250
    .end local v0    # "deleteArticleItem":Lcom/actionbarsherlock/view/MenuItem;
    :goto_2
    const v7, 0x7f08036f

    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    .line 251
    .local v5, "shareItem":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v5, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 252
    invoke-interface {v5}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/widget/ShareActionProvider;

    .line 253
    .local v3, "shareActionProvider":Lcom/actionbarsherlock/widget/ShareActionProvider;
    new-instance v6, Lcom/liquable/nemo/forum/ArticleReplyListFragment$3;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$3;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    invoke-virtual {v3, v6}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 264
    const-string/jumbo v6, "cubie_share_history.xml"

    invoke-virtual {v3, v6}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 265
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v4, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v6, "text/plain"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string/jumbo v6, "android.intent.extra.TEXT"

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    .line 268
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    iget-object v10, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v7, v8, v9, v10}, Lcom/liquable/nemo/forum/ForumDaemon;->getShareTextForArticle(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)Ljava/lang/String;

    move-result-object v7

    .line 267
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 241
    .end local v1    # "isCreator":Z
    .end local v3    # "shareActionProvider":Lcom/actionbarsherlock/widget/ShareActionProvider;
    .end local v4    # "shareIntent":Landroid/content/Intent;
    .end local v5    # "shareItem":Lcom/actionbarsherlock/view/MenuItem;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 246
    .restart local v1    # "isCreator":Z
    :cond_4
    const v7, 0x7f080387

    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 247
    .local v2, "reportAbuseItem":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v2, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 278
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->getArticle(Landroid/os/Bundle;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    .line 280
    invoke-virtual {p0, v8}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->setHasOptionsMenu(Z)V

    .line 282
    const v0, 0x7f0300aa

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 283
    .local v7, "view":Landroid/view/View;
    const v0, 0x7f0801d0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->contentLayout:Landroid/view/View;

    .line 284
    const v0, 0x7f0801cf

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleProgressBar:Landroid/view/View;

    .line 285
    const v0, 0x7f0800b8

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->progressBar:Landroid/view/View;

    .line 286
    const v0, 0x7f0801d4

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    .line 287
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    invoke-direct {v0}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    .line 288
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$4;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    const v0, 0x7f030128

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    .line 303
    const v0, 0x7f0801d3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->inputLayoutMask:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->inputLayoutMask:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleView:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 328
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$6;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 351
    const v0, 0x7f0801d2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 352
    .local v6, "galleryButton":Landroid/view/View;
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$7;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$7;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    new-instance v0, Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lcom/liquable/nemo/chat/WidgetManager;-><init>(Landroid/view/View;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    .line 359
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/WidgetManager;->initInputMessageWidget(ZLcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$9;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$9;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v5, v4, v1

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->EMOJI:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v1, v4, v8

    .line 424
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v2, v3, v1}, Lcom/liquable/nemo/chat/WidgetManager;->initEmojiWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    if-nez v0, :cond_1

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleAndBoard()V

    .line 432
    :goto_0
    return-object v7

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticle()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 445
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 474
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 447
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d02ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/forum/ForumAbuseReasonAdapter;

    invoke-direct {v2}, Lcom/liquable/nemo/forum/ForumAbuseReasonAdapter;-><init>()V

    new-instance v3, Lcom/liquable/nemo/forum/ArticleReplyListFragment$10;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$10;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    .line 448
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 460
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0180

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d017f

    .line 461
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d016e

    new-instance v3, Lcom/liquable/nemo/forum/ArticleReplyListFragment$11;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$11;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    .line 462
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00c5

    const/4 v3, 0x0

    .line 469
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x7f080387
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStop()V
    .locals 6

    .prologue
    .line 102
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onStop()V

    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->getCount()I

    move-result v4

    .line 105
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastArticleReplyCountChange(Ljava/lang/String;I)V

    .line 107
    iget-boolean v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->triggerLikeIncrease:Z

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLikeCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 109
    .local v0, "count":J
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v3, v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumLikeArticle(Ljava/lang/String;J)V

    .line 114
    .end local v0    # "count":J
    :cond_0
    return-void
.end method
