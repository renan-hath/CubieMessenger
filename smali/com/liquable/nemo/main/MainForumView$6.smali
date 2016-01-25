.class Lcom/liquable/nemo/main/MainForumView$6;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "MainForumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainForumView;->tryListAndSyncFavorites()V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
        ">;>;>;"
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
    .line 279
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 283
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ForumDaemon;->listRecommendBoards()Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, "recommendedBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ForumDaemon;->listFavoriteBoards()Ljava/util/List;

    move-result-object v0

    .line 285
    .local v0, "favoriteBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 279
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainForumView$6;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->mainForumViewProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$500(Lcom/liquable/nemo/main/MainForumView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->mainForumViewProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$500(Lcom/liquable/nemo/main/MainForumView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/main/MainForumView;->listFavoriteTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainForumView;->access$602(Lcom/liquable/nemo/main/MainForumView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 297
    return-void
.end method

.method protected postExecuteSuccess(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;>;"
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 304
    .local v1, "recommendedBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 305
    .local v0, "favoriteBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->tutorialTextView:Landroid/view/View;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainForumView;->access$700(Lcom/liquable/nemo/main/MainForumView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainForumView;->access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 311
    iget-object v2, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # invokes: Lcom/liquable/nemo/main/MainForumView;->trySyncFromServer()V
    invoke-static {v2}, Lcom/liquable/nemo/main/MainForumView;->access$800(Lcom/liquable/nemo/main/MainForumView;)V

    .line 312
    return-void

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainForumView$6;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->tutorialTextView:Landroid/view/View;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainForumView;->access$700(Lcom/liquable/nemo/main/MainForumView;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 279
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainForumView$6;->postExecuteSuccess(Landroid/util/Pair;)V

    return-void
.end method
