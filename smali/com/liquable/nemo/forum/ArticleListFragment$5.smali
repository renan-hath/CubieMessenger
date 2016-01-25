.class Lcom/liquable/nemo/forum/ArticleListFragment$5;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 336
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1100(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1100(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->hide()V

    .line 341
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->step:I
    invoke-static {v0, v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1002(Lcom/liquable/nemo/forum/ArticleListFragment;I)I

    .line 343
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d03ad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0203

    new-instance v2, Lcom/liquable/nemo/forum/ArticleListFragment$5$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$5$1;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment$5;)V

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    const/4 v2, 0x0

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    new-instance v1, Lcom/liquable/nemo/forum/CreateArticleActivity$CreateIntent;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/forum/CreateArticleActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    invoke-virtual {v0, v1, v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
