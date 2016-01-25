.class Lcom/liquable/nemo/forum/ArticleListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ArticleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;
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
    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 77
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchBoardUpdate(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    new-instance v3, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment$1;Landroid/content/Context;)V

    new-array v4, v5, [Ljava/lang/Void;

    .line 97
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->execute([Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchReloadFavoriteBoards(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    new-instance v3, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment$1;Landroid/content/Context;)V

    new-array v4, v5, [Ljava/lang/Void;

    .line 119
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;->execute([Ljava/lang/Object;)V

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchReloadAfterDeleteArticle(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "articleId":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    invoke-virtual {v3, v0, v4}, Lcom/liquable/nemo/forum/ArticleListAdapter;->updateDeletedArticle(Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;)V

    .line 126
    .end local v0    # "articleId":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchReloadAfterReportAbuseArticle(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "articleId":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/forum/ArticleListAdapter;->updateReportedArticle(Ljava/lang/String;)V

    .line 130
    .end local v0    # "articleId":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchArticleReplyCountChange(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "articleId":Ljava/lang/String;
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_REPLY_COUNT"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, "count":I
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->updateReplyCount(Ljava/lang/String;I)V

    .line 135
    .end local v0    # "articleId":Ljava/lang/String;
    .end local v1    # "count":I
    :cond_4
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchLikeArticle(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "articleId":Ljava/lang/String;
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_LIKE_COUNT"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 138
    .local v1, "count":J
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/liquable/nemo/forum/ArticleListAdapter;->updateLikeCount(Ljava/lang/String;J)V

    .line 140
    .end local v0    # "articleId":Ljava/lang/String;
    .end local v1    # "count":J
    :cond_5
    return-void
.end method
