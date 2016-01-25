.class public Lcom/liquable/nemo/forum/ArticleReplyListActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "ArticleReplyListActivity.java"

# interfaces
.implements Lcom/liquable/nemo/forum/ArticleReplyListFragment$ArticleReplyListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;
    }
.end annotation


# static fields
.field public static final KEY_ARTICLE_ID:Ljava/lang/String; = "articleId"

.field public static final KEY_BOARD_ID:Ljava/lang/String; = "boardId"

.field private static final debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private parentBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    return-object v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->parentBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    if-nez v1, :cond_0

    .line 120
    invoke-super {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->onBackPressed()V

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v1, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enter article from url, go back to starting ArticleListActivity with board:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->parentBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->parentBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->web:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 130
    .local v0, "boardIntent":Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->finish()V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 84
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    .line 85
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/forum/ForumDaemon;->extractBoardIdAndArticleId(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 86
    .local v0, "boardIdAndArticleId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 87
    sget-object v2, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enter article from url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "boardId"

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "articleId"

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    .end local v0    # "boardIdAndArticleId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/liquable/nemo/SingleFragmentActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d0078

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 96
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    sget-object v0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enter article from url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but there is an existing instance, restart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->finish()V

    .line 104
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 109
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->onBackPressed()V

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setParentBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 0
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;->parentBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 138
    return-void
.end method
