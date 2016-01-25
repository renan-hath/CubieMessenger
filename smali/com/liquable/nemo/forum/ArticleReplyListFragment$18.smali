.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;
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


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 767
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ProfileSettingActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 774
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 771
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$18;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 772
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorNickname()Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
