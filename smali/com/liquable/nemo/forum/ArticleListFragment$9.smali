.class Lcom/liquable/nemo/forum/ArticleListFragment$9;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$9;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$9;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$9;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    .line 483
    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1100(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 484
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->shouldShowCaseForumArticleList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseForumArticleList(Z)V

    .line 488
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$9;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->tryShowTutorial()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1200(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    goto :goto_0
.end method
