.class Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "BoardCategoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/BoardCategoryListFragment;->onQueryTextSubmit(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/BoardCategoryListFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    iput-object p3, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->val$query:Ljava/lang/String;

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
    .line 129
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
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
    .line 134
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->val$query:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/forum/ForumDaemon;->searchBoard(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$200(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$200(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$200(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$300(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$200(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$300(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$402(Lcom/liquable/nemo/forum/BoardCategoryListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 150
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->postExecuteSuccess(Ljava/util/List;)V

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
    .line 154
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # invokes: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToBoardList(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$500(Lcom/liquable/nemo/forum/BoardCategoryListFragment;Ljava/util/List;)V

    .line 155
    return-void
.end method
