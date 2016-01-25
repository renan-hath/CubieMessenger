.class Lcom/liquable/nemo/main/MainForumView$1;
.super Landroid/content/BroadcastReceiver;
.source "MainForumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainForumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$1;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 60
    new-array v3, v6, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/util/urlimage/UrlFileType;->FORUM_IMAGES:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v5, v3, v4

    invoke-static {p2, v3}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/liquable/nemo/main/MainForumView$1;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/main/MainForumView;->access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->notifyDataSetChanged()V

    .line 64
    :cond_0
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchReloadFavoriteBoards(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/liquable/nemo/main/MainForumView$1;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # setter for: Lcom/liquable/nemo/main/MainForumView;->needReloadFavorite:Z
    invoke-static {v3, v6}, Lcom/liquable/nemo/main/MainForumView;->access$102(Lcom/liquable/nemo/main/MainForumView;Z)Z

    .line 67
    :cond_1
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchReloadAfterReportAbuseBoard(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "boardId":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/main/MainForumView$1;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/main/MainForumView;->access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->updateReported(Ljava/lang/String;)V

    .line 71
    .end local v0    # "boardId":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchEnterBoard(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "boardId":Ljava/lang/String;
    const-string/jumbo v3, "com.liquable.nemo.forum.model.KEY_ENTER_TIME"

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 73
    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 75
    .local v1, "enterTime":J
    iget-object v3, p0, Lcom/liquable/nemo/main/MainForumView$1;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/main/MainForumView;->access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->updateLocalLastUpdateTime(Ljava/lang/String;J)V

    .line 77
    .end local v0    # "boardId":Ljava/lang/String;
    .end local v1    # "enterTime":J
    :cond_3
    return-void
.end method
