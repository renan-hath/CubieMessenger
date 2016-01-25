.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

.field final synthetic val$articleBody:Lcom/liquable/nemo/forum/model/article/NormalArticle;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/forum/model/article/NormalArticle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iput-object p2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;->val$articleBody:Lcom/liquable/nemo/forum/model/article/NormalArticle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 748
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    new-instance v2, Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$17;->val$articleBody:Lcom/liquable/nemo/forum/model/article/NormalArticle;

    .line 749
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->getPictureUrls()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->startActivity(Landroid/content/Intent;)V

    .line 750
    return-void
.end method
