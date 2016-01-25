.class Lcom/liquable/nemo/main/MainForumView$7;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "MainForumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainForumView;->trySyncFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainForumView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainForumView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$7;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 327
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainForumView$7;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView$7;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/main/MainForumView;->access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->getBoards()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->refreshFavoriteBoards(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$7;->this$0:Lcom/liquable/nemo/main/MainForumView;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/main/MainForumView;->syncBoardTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainForumView;->access$902(Lcom/liquable/nemo/main/MainForumView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 339
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainForumView$7;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$7;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->replace(Ljava/util/List;)V

    .line 344
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$7;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/liquable/nemo/main/MainForumView;->lastSyncFavoriteBoardtime:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/main/MainForumView;->access$1002(Lcom/liquable/nemo/main/MainForumView;J)J

    .line 345
    return-void
.end method
