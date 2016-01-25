.class Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "YoutubePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->run()V
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
        "Lcom/liquable/nemo/youtube/YoutubeVideo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

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
    .line 229
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
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
    .line 235
    :try_start_0
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    .line 237
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    invoke-static {v4}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->access$700(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;)Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " startIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget v4, v4, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->startIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MAX_RESULTS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget-object v2, v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->apiClient:Lcom/liquable/nemo/youtube/YoutubeApiClient;
    invoke-static {v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$400(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/youtube/YoutubeApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    invoke-static {v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->access$700(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;)Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget v4, v4, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->startIndex:I

    const/16 v5, 0x19

    invoke-virtual {v2, v3, v4, v5}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getStandardFeed(Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;II)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    .line 246
    .local v1, "responseData":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Lcom/liquable/nemo/youtube/YoutubeResponseData;>;"
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->noMoreData:Z

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :goto_0
    return-object v2

    .line 251
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/youtube/YoutubeResponseData;

    invoke-virtual {v2}, Lcom/liquable/nemo/youtube/YoutubeResponseData;->getStartIndex()I

    move-result v4

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/youtube/YoutubeResponseData;

    invoke-virtual {v2}, Lcom/liquable/nemo/youtube/YoutubeResponseData;->getItemsPerPage()I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v3, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->startIndex:I

    .line 252
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": getTotalItems:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 254
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/youtube/YoutubeResponseData;

    invoke-virtual {v2}, Lcom/liquable/nemo/youtube/YoutubeResponseData;->getTotalItems()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v3, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/youtube/YoutubeResponseData;

    invoke-virtual {v2}, Lcom/liquable/nemo/youtube/YoutubeResponseData;->getTotalItems()I

    move-result v2

    if-nez v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->noMoreData:Z

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->hasLoaded:Z

    .line 259
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/youtube/YoutubeResponseData;

    invoke-virtual {v2}, Lcom/liquable/nemo/youtube/YoutubeResponseData;->getItems()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 260
    .end local v1    # "responseData":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Lcom/liquable/nemo/youtube/YoutubeResponseData;>;"
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->lastFail:J

    .line 262
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    new-instance v2, Lcom/liquable/nemo/client/AsyncException;

    const v3, 0x7f0d01c6

    invoke-direct {v2, v3}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v2
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget-object v0, v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$000(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget-object v0, v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->youtubeProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$000(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/youtube/YoutubeVideo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget-object v0, v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    const v1, 0x7f0d01b1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;->this$1:Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    iget-object v0, v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->adapter:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->add(Ljava/util/List;)V

    goto :goto_0
.end method
