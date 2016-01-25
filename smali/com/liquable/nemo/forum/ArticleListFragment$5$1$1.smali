.class Lcom/liquable/nemo/forum/ArticleListFragment$5$1$1;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment$5$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/forum/ArticleListFragment$5$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/forum/ArticleListFragment$5$1;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5$1$1;->this$2:Lcom/liquable/nemo/forum/ArticleListFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5$1$1;->this$2:Lcom/liquable/nemo/forum/ArticleListFragment$5$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    new-instance v1, Lcom/liquable/nemo/forum/CreateArticleActivity$CreateIntent;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5$1$1;->this$2:Lcom/liquable/nemo/forum/ArticleListFragment$5$1;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$5;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5$1$1;->this$2:Lcom/liquable/nemo/forum/ArticleListFragment$5$1;

    iget-object v3, v3, Lcom/liquable/nemo/forum/ArticleListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$5;

    iget-object v3, v3, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    .line 352
    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/forum/CreateArticleActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    const/4 v2, 0x0

    .line 351
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 353
    return-void
.end method
