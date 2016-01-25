.class Lcom/liquable/nemo/main/MainRecommendForumView$1;
.super Landroid/content/BroadcastReceiver;
.source "MainRecommendForumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainRecommendForumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainRecommendForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainRecommendForumView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/main/MainRecommendForumView$1;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string/jumbo v3, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "articleId":Ljava/lang/String;
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "boardId":Ljava/lang/String;
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchArticleReplyCountChange(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_REPLY_COUNT"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, "count":I
    iget-object v3, p0, Lcom/liquable/nemo/main/MainRecommendForumView$1;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$000(Lcom/liquable/nemo/main/MainRecommendForumView;)Lcom/liquable/nemo/forum/HotArticleListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->updateReplyCount(Ljava/lang/String;I)V

    .line 66
    .end local v2    # "count":I
    :cond_2
    sget-object v3, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_DELETE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v4, "com.liquable.nemo.KEY_EVENT_CODE"

    .line 67
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 68
    iget-object v3, p0, Lcom/liquable/nemo/main/MainRecommendForumView$1;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$000(Lcom/liquable/nemo/main/MainRecommendForumView;)Lcom/liquable/nemo/forum/HotArticleListAdapter;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    invoke-virtual {v3, v1, v0, v4}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->updateDeletedArticle(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;)V

    goto :goto_0

    .line 71
    :cond_3
    sget-object v3, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v4, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 73
    iget-object v3, p0, Lcom/liquable/nemo/main/MainRecommendForumView$1;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$000(Lcom/liquable/nemo/main/MainRecommendForumView;)Lcom/liquable/nemo/forum/HotArticleListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->updateReportedArticle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
