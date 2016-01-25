.class Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "BoardListByCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->tryLoadBoards()V
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
.field final synthetic this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

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
    .line 127
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
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
    .line 131
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardCategory:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$200(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .line 132
    # getter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->currentPage:I
    invoke-static {v2}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$300(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x1e

    const/16 v3, 0x1e

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/forum/ForumDaemon;->listBoardsByCategory(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->progressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$400(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->progressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$400(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->loadingTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$502(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 145
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 1
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
    .line 149
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$000(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Lcom/liquable/nemo/forum/BoardListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/BoardListAdapter;->addAll(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # operator++ for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->currentPage:I
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$308(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)I

    .line 151
    return-void
.end method
