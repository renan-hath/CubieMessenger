.class Lcom/liquable/nemo/forum/ArticleListFragment$6$1;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/forum/ArticleListFragment$6;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/ArticleListFragment$6;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$6;

    iget-object v1, v1, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$6;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    .line 387
    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$700(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;->getForumBoardBannerId()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/forum/ForumDaemon;->logBoardBannerClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method
